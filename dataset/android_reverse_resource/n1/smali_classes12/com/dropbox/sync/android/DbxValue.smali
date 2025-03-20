.class abstract Lcom/dropbox/sync/android/DbxValue;
.super Ljava/lang/Object;
.source "DbxValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dropbox/sync/android/DbxValue;",
        ">;"
    }
.end annotation


# instance fields
.field final valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;


# direct methods
.method protected constructor <init>(Lcom/dropbox/sync/android/DbxFields$ValueType;)V
    .locals 2
    .param p1, "type"    # Lcom/dropbox/sync/android/DbxFields$ValueType;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ValueType can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 15
    return-void
.end method

.method public static create(D)Lcom/dropbox/sync/android/DbxValue;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/sync/android/DbxDoubleValue;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxDoubleValue;-><init>(D)V

    return-object v0
.end method

.method public static create(J)Lcom/dropbox/sync/android/DbxValue;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 42
    new-instance v0, Lcom/dropbox/sync/android/DbxLongValue;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxLongValue;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/dropbox/sync/android/DbxStringValue;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxStringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxValue;
    .locals 4
    .param p0, "v"    # Ljava/util/Date;

    .prologue
    .line 49
    new-instance v0, Lcom/dropbox/sync/android/DbxDateValue;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dropbox/sync/android/DbxDateValue;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxValue;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    new-instance v0, Lcom/dropbox/sync/android/DbxListValue;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxListValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static create(Z)Lcom/dropbox/sync/android/DbxValue;
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 28
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->TRUE:Lcom/dropbox/sync/android/DbxBooleanValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->FALSE:Lcom/dropbox/sync/android/DbxBooleanValue;

    goto :goto_0
.end method

.method public static create([B)Lcom/dropbox/sync/android/DbxValue;
    .locals 1
    .param p0, "v"    # [B

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/sync/android/DbxBytesValue;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxBytesValue;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public asBytes()[B
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public asDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public asDouble()D
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

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
    .line 148
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public asLong()J
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    move-result-object v0

    throw v0
.end method

.method abstract getNativeValue()J
.end method

.method public valueType()Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    return-object v0
.end method
