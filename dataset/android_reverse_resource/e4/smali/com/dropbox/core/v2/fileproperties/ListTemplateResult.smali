.class public Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
.super Ljava/lang/Object;
.source "ListTemplateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;
    }
.end annotation


# instance fields
.field protected final templateIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "templateIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'templateIds\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'templateIds\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Stringan item in list \'templateIds\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_3
    const-string/jumbo v2, "(/|ptid:).*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Stringan item in list \'templateIds\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "x":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;

    .line 85
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getTemplateIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;->templateIds:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 71
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
