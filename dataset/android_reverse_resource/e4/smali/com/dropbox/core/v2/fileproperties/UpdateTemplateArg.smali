.class public Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;
.super Ljava/lang/Object;
.source "UpdateTemplateArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    }
.end annotation


# instance fields
.field protected final addFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected final description:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'templateId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'templateId\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    const-string/jumbo v1, "(/|ptid:).*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'templateId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    .line 62
    if-eqz p4, :cond_4

    .line 63
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    .line 64
    .local v0, "x":Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
    if-nez v0, :cond_3

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'addFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "x":Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
    :cond_4
    iput-object p4, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    .line 70
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    .locals 1
    .param p0, "templateId"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-ne p1, p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 255
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 259
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    .line 260
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    .line 263
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;
    :cond_7
    move v1, v2

    .line 267
    goto :goto_0
.end method

.method public getAddFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 240
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 246
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
