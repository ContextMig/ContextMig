.class public Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;
.super Ljava/lang/Object;
.source "PropertiesSearchMatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;
    }
.end annotation


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final path:Ljava/lang/String;

.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'id\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'id\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    .line 46
    if-nez p2, :cond_2

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'path\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    .line 50
    if-nez p3, :cond_3

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    .line 54
    .local v0, "x":Lcom/dropbox/core/v2/fileproperties/PropertyGroup;
    if-nez v0, :cond_4

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "x":Lcom/dropbox/core/v2/fileproperties/PropertyGroup;
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;

    .line 109
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    .line 111
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;
    :cond_6
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch;->propertyGroups:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMatch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
