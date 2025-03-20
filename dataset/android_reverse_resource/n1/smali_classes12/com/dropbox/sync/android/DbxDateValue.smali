.class Lcom/dropbox/sync/android/DbxDateValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxDateValue.java"


# instance fields
.field public final value:J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 16
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->DATE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 17
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    .line 18
    return-void
.end method


# virtual methods
.method public asDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 6
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 28
    :cond_0
    if-ne p0, p1, :cond_2

    .line 32
    .end local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    :cond_1
    :goto_0
    return v2

    .line 29
    .restart local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    :cond_2
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxDateValue;

    if-nez v3, :cond_3

    .line 30
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    goto :goto_0

    .line 31
    :cond_3
    check-cast p1, Lcom/dropbox/sync/android/DbxDateValue;

    .end local p1    # "other":Lcom/dropbox/sync/android/DbxValue;
    iget-wide v0, p1, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    .line 32
    .local v0, "otherValue":J
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxDateValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 39
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 38
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/dropbox/sync/android/DbxDateValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    check-cast p1, Lcom/dropbox/sync/android/DbxDateValue;

    .end local p1    # "other":Ljava/lang/Object;
    iget-wide v4, p1, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeTimestampAtom(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeTimestampValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDateValue;->value:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
