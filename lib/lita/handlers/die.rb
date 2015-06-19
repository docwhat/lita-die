module Lita
  #
  module Handlers
    # Die handler
    class Die < Handler
      route(
        /^die$/, :die,
        command: true, restrict_to: :admins,
        help: 'dies.')

      def die(response)
        response.reply(render_template('dies'))
        robot.shut_down
      end
    end

    Lita.register_handler(Die)
  end
end
