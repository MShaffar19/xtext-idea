package org.eclipse.xtext.parser.unorderedGroups.idea.lang;

import com.intellij.openapi.fileTypes.FileTypeConsumer;
import com.intellij.openapi.fileTypes.FileTypeFactory;
import org.jetbrains.annotations.NotNull;

public class ExUnorderedGroupsTestLanguageFileTypeFactory extends FileTypeFactory {

	@Override
	public void createFileTypes(@NotNull FileTypeConsumer consumer) {
		consumer.consume(org.eclipse.xtext.parser.unorderedGroups.idea.lang.ExUnorderedGroupsTestLanguageFileType.INSTANCE, org.eclipse.xtext.parser.unorderedGroups.idea.lang.AbstractExUnorderedGroupsTestLanguageFileType.DEFAULT_EXTENSION);
	}

}
