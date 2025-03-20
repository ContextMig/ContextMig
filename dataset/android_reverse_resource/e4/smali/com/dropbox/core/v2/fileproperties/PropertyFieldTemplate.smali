.class public Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
.super Ljava/lang/Object;
.source "PropertyFieldTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;
    }
.end annotation


# instance fields
.field protected final description:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final type:Lcom/dropbox/core/v2/fileproperties/PropertyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertyType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/dropbox/core/v2/fileproperties/PropertyType;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'description\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    .line 53
    if-nez p3, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'type\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    .line 110
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    .line 112
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/fileproperties/PropertyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
    :cond_6
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/dropbox/core/v2/fileproperties/PropertyType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 91
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
