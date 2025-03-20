.class Lcom/dropbox/sync/android/DbxListValue;
.super Lcom/dropbox/sync/android/DbxValue;
.source "DbxListValue.java"


# static fields
.field static final EMPTY:Lcom/dropbox/sync/android/DbxListValue;


# instance fields
.field final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/dropbox/sync/android/DbxListValue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxListValue;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxListValue;->EMPTY:Lcom/dropbox/sync/android/DbxListValue;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "vs":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    sget-object v2, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-direct {p0, v2}, Lcom/dropbox/sync/android/DbxValue;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;)V

    .line 21
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "List value can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAtom;

    .line 23
    .local v0, "a":Lcom/dropbox/sync/android/DbxAtom;
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Lists can\'t contain null values."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    .end local v0    # "a":Lcom/dropbox/sync/android/DbxAtom;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 8
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v6, 0x0

    .line 35
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 36
    :cond_0
    if-ne p0, p1, :cond_1

    .line 50
    :goto_0
    return v6

    .line 37
    :cond_1
    instance-of v5, p1, Lcom/dropbox/sync/android/DbxListValue;

    if-nez v5, :cond_2

    .line 38
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxListValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v6, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v5, v6}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 39
    check-cast v2, Lcom/dropbox/sync/android/DbxListValue;

    .line 40
    .local v2, "otherList":Lcom/dropbox/sync/android/DbxListValue;
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    iget-object v5, v2, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 41
    .local v3, "otherSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 42
    if-lt v1, v3, :cond_3

    .line 43
    const/4 v6, 0x1

    goto :goto_0

    .line 45
    :cond_3
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dropbox/sync/android/DbxAtom;

    iget-object v7, v2, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/dropbox/sync/android/DbxAtom;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 46
    .local v0, "cmp":I
    if-eqz v0, :cond_4

    move v6, v0

    .line 47
    goto :goto_0

    .line 41
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "cmp":I
    :cond_5
    if-ne v4, v3, :cond_6

    move v5, v6

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxListValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 57
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 56
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxListValue;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    check-cast p1, Lcom/dropbox/sync/android/DbxListValue;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getNativeValue()J
    .locals 8

    .prologue
    .line 73
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 74
    .local v0, "handles":[J
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/sync/android/DbxAtom;

    .line 76
    .local v4, "v":Lcom/dropbox/sync/android/DbxAtom;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxAtom;->getNativeAtom()J

    move-result-wide v6

    aput-wide v6, v0, v1

    move v1, v2

    .line 77
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 79
    .end local v4    # "v":Lcom/dropbox/sync/android/DbxAtom;
    :cond_0
    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeListValue([J)J

    move-result-wide v6

    return-wide v6
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxListValue;->value:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
