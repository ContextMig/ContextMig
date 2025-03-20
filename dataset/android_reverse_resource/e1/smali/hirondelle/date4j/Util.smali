.class final Lhirondelle/date4j/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final SINGLE_QUOTE:Ljava/lang/String; = "\'"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkObjectIsArray(Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArray"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object is not an array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method static getArrayAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "aArray"    # Ljava/lang/Object;

    .prologue
    .line 17
    const-string v3, "["

    .line 18
    .local v3, "fSTART_CHAR":Ljava/lang/String;
    const-string v0, "]"

    .line 19
    .local v0, "fEND_CHAR":Ljava/lang/String;
    const-string v2, ", "

    .line 20
    .local v2, "fSEPARATOR":Ljava/lang/String;
    const-string v1, "null"

    .line 22
    .local v1, "fNULL":Ljava/lang/String;
    if-nez p0, :cond_0

    const-string v8, "null"

    .line 41
    :goto_0
    return-object v8

    .line 23
    :cond_0
    invoke-static {p0}, Lhirondelle/date4j/Util;->checkObjectIsArray(Ljava/lang/Object;)V

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .local v7, "result":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 27
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 28
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 29
    .local v5, "item":Ljava/lang/Object;
    invoke-static {v5}, Lhirondelle/date4j/Util;->isNonNullArray(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 31
    invoke-static {v5}, Lhirondelle/date4j/Util;->getArrayAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :goto_2
    invoke-static {v4, v6}, Lhirondelle/date4j/Util;->isLastItem(II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 37
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 40
    .end local v5    # "item":Ljava/lang/Object;
    :cond_3
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method static getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static isLastItem(II)Z
    .locals 1
    .param p0, "aIdx"    # I
    .param p1, "aLength"    # I

    .prologue
    .line 63
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonNullArray(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "aItem"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static quote(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static textHasContent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aText"    # Ljava/lang/String;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
