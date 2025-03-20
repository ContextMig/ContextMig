.class Lcom/dropbox/sync/android/DbxStringValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxStringValue.java"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->STRING:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 15
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String value can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 2
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    .line 30
    .end local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    :goto_0
    return v0

    .line 28
    .restart local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    :cond_1
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxStringValue;

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v1, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    check-cast p1, Lcom/dropbox/sync/android/DbxStringValue;

    .end local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxStringValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 37
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 36
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxStringValue;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    check-cast p1, Lcom/dropbox/sync/android/DbxStringValue;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeStringAtom(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeStringValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxStringValue;->value:Ljava/lang/String;

    return-object v0
.end method
