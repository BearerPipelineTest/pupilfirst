module Lita
  module Handlers
    class Glossary < Handler
      route(/\Adefine\s*\?*\s*([a-z\-\s]*)\?*\z/i, :definition, command: true, help: { 'define TERM' => I18n.t('slack.help.glossary') })

      def definition(response)
        ActiveRecord::Base.connection_pool.with_connection do
          @response = response
          @term = response.match_data[1].present? ? response.match_data[1] : nil
          fetch_definition
          Ahoy::Tracker.new.track Visit::EVENT_VOCALIST_COMMAND, command: Visit::VOCALIST_COMMAND_GLOSSARY
        end
      end

      def fetch_definition
        ActiveRecord::Base.connection_pool.with_connection do
          @result = ::GlossaryTerm.find_by(term: @term.downcase.strip)
        end

        @result.present? ? send_definition : send_not_found
      end

      def send_not_found
        @response.reply I18n.t('slack.handlers.glossary.term_not_found', term: @term.strip)
      end

      def send_definition
        @response.reply <<~DEFINITION
          > *Definition of #{@term}:*
          #{@result.definition}
        DEFINITION
      end
    end

    Lita.register_handler(Glossary)
  end
end
