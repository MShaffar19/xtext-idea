package org.eclipse.xtext.linking.idea.lang;

import javax.swing.Icon;

import org.eclipse.xtext.idea.Icons;
import org.jetbrains.annotations.NonNls;

import com.intellij.lang.Language;
import com.intellij.openapi.fileTypes.LanguageFileType;

public class AbstractIgnoreCaseNamespacesTestLanguageFileType extends LanguageFileType {

	@NonNls 
	public static final String DEFAULT_EXTENSION = "ignorecasenamespacestestlanguage";

	protected AbstractIgnoreCaseNamespacesTestLanguageFileType(final Language language) {
		super(language);
	}

	@Override
	public String getDefaultExtension() {
		return DEFAULT_EXTENSION;
	}

	@Override
	public String getDescription() {
		return "IgnoreCaseNamespacesTestLanguage files";
	}

	@Override
	public Icon getIcon() {
		return Icons.DSL_FILE_TYPE;
	}

	@Override
	public String getName() {
		return "IgnoreCaseNamespacesTestLanguage";
	}

}
