package org.eclipse.xtext.parsetree.formatter.idea

import org.eclipse.xtext.ISetup
import org.eclipse.xtext.idea.extensions.EcoreGlobalRegistries

class FormatterTestLanguageIdeaSetup implements ISetup {

	override createInjectorAndDoEMFRegistration() {
		EcoreGlobalRegistries.ensureInitialized
		new FormatterTestLanguageStandaloneSetupIdea().createInjector
	}

}
