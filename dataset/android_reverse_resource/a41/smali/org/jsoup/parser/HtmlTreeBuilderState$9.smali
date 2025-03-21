.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 891
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 893
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "tfoot"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "thead"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "tr"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 895
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    .line 896
    .local v0, "processed":Z
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 900
    :goto_0
    return v0

    .line 898
    .end local v0    # "processed":Z
    :cond_0
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    .restart local v0    # "processed":Z
    goto :goto_0
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 805
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 806
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 807
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 808
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 809
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    .line 887
    :cond_0
    :goto_0
    return v4

    .line 810
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 811
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 814
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 815
    goto :goto_0

    .line 816
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 817
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 818
    .local v3, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "name":Ljava/lang/String;
    const-string v6, "caption"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 820
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 821
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 822
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 823
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 824
    :cond_4
    const-string v6, "colgroup"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 825
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 826
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 827
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 828
    :cond_5
    const-string v6, "col"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 829
    const-string v4, "colgroup"

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 830
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto :goto_0

    .line 831
    :cond_6
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "tbody"

    aput-object v7, v6, v5

    const-string v7, "tfoot"

    aput-object v7, v6, v4

    const-string v7, "thead"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 832
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 833
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 834
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 835
    :cond_7
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "td"

    aput-object v7, v6, v5

    const-string v7, "th"

    aput-object v7, v6, v4

    const-string v7, "tr"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 836
    const-string v4, "tbody"

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 837
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_0

    .line 838
    :cond_8
    const-string v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 839
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 840
    const-string v5, "table"

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v2

    .line 841
    .local v2, "processed":Z
    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_0

    .line 843
    .end local v2    # "processed":Z
    :cond_9
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "style"

    aput-object v7, v6, v5

    const-string v7, "script"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 844
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    goto/16 :goto_0

    .line 845
    :cond_a
    const-string v6, "input"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 846
    iget-object v5, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 847
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_0

    .line 849
    :cond_b
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 851
    :cond_c
    const-string v6, "form"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 852
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 853
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v6

    if-eqz v6, :cond_d

    move v4, v5

    .line 854
    goto/16 :goto_0

    .line 856
    :cond_d
    invoke-virtual {p2, v3, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_0

    .line 859
    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_0

    .line 862
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 863
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    .line 864
    .local v0, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 866
    .restart local v1    # "name":Ljava/lang/String;
    const-string v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 867
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 868
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 869
    goto/16 :goto_0

    .line 871
    :cond_10
    const-string v5, "table"

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    goto/16 :goto_0

    .line 874
    :cond_11
    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v6, v5

    const-string v7, "caption"

    aput-object v7, v6, v4

    const-string v4, "col"

    aput-object v4, v6, v8

    const-string v4, "colgroup"

    aput-object v4, v6, v9

    const/4 v4, 0x4

    const-string v7, "html"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    const-string v7, "tbody"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "td"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string v7, "tfoot"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "th"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    const-string v7, "thead"

    aput-object v7, v6, v4

    const/16 v4, 0xa

    const-string v7, "tr"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 876
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 877
    goto/16 :goto_0

    .line 879
    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_0

    .line 882
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v1    # "name":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 883
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 887
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_0
.end method
