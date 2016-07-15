/*
 * generated by Xtext
 */
grammar PsiInternalBug311337TestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.linking.lazy.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.linking.lazy.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.linking.lazy.idea.lang.Bug311337TestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.linking.lazy.services.Bug311337TestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected Bug311337TestLanguageGrammarAccess grammarAccess;

	protected Bug311337TestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalBug311337TestLanguageParser(PsiBuilder builder, TokenStream input, Bug311337TestLanguageElementTypeProvider elementTypeProvider, Bug311337TestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Model";
	}

}

//Entry rule entryRuleModel
entryRuleModel returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelElementType()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getModel_DefDefinitionParserRuleCall_0ElementType());
			}
			lv_def_0_0=ruleDefinition
			{
				doneComposite();
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
		)
	)+
;

//Entry rule entryRuleDefinition
entryRuleDefinition returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDefinitionElementType()); }
	iv_ruleDefinition=ruleDefinition
	{ $current=$iv_ruleDefinition.current; }
	EOF;

// Rule Definition
ruleDefinition returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getDefinition_DefKeyword_0ElementType());
		}
		otherlv_0='(def)'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getDefinition_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getDefinition_ColonKeyword_2ElementType());
		}
		otherlv_2=':'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getDefinition_ChildChildParserRuleCall_3_0ElementType());
				}
				lv_child_3_0=ruleChild
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getDefinition_RefReferenceParserRuleCall_4_0ElementType());
				}
				lv_ref_4_0=ruleReference
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)?
	)
;

//Entry rule entryRuleChild
entryRuleChild returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getChildElementType()); }
	iv_ruleChild=ruleChild
	{ $current=$iv_ruleChild.current; }
	EOF;

// Rule Child
ruleChild returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getChild_ChildKeyword_0ElementType());
		}
		otherlv_0='(child)'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getChild_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getChild_ColonKeyword_2ElementType());
		}
		otherlv_2=':'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					markLeaf(elementTypeProvider.getChild_LinkDefinitionCrossReference_3_0ElementType());
				}
				otherlv_3=RULE_ID
				{
					doneLeaf(otherlv_3);
				}
			)
		)?
	)
;

//Entry rule entryRuleReference
entryRuleReference returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getReferenceElementType()); }
	iv_ruleReference=ruleReference
	{ $current=$iv_ruleReference.current; }
	EOF;

// Rule Reference
ruleReference returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getReference_RefKeyword_0ElementType());
		}
		otherlv_0='(ref)'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					markLeaf(elementTypeProvider.getReference_RefChildChildCrossReference_1_0ElementType());
				}
				otherlv_1=RULE_ID
				{
					doneLeaf(otherlv_1);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getReference_ColonKeyword_2_0ElementType());
			}
			otherlv_2=':'
			{
				doneLeaf(otherlv_2);
			}
			(
				{
					precedeComposite(elementTypeProvider.getReference_NestedRefLeftAction_2_1ElementType());
					doneComposite();
					associateWithSemanticElement();
				}
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getReference_RefChildChildCrossReference_2_2_0ElementType());
					}
					otherlv_4=RULE_ID
					{
						doneLeaf(otherlv_4);
					}
				)
			)
		)*
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
