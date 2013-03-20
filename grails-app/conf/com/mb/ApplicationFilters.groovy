package com.mb

class ApplicationFilters {

    def filters = {
        logging(controller: '*', action: '*') {
            before = {
                log.info(params.findAll { !(it.key in ['password', 'newPassword', 'confirmPassword']) })
            }
        }

        consoleImports(controller: 'console', action: '*') {
            before = {
                String importStatements = ""

                session['_grails_console_last_code_'] = session['_grails_console_last_code_'] ?: importStatements
            }
        }


    }
}