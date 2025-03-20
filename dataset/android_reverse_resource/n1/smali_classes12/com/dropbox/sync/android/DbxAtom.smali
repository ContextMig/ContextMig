.class abstract Lcom/dropbox/sync/android/DbxAtom;
.super Lcom/dropbox/sync/android/DbxValue;
.source "DbxAtom.java"


# instance fields
.field final mAtomType:Lcom/dropbox/sync/android/DbxFields$AtomType;


# direct methods
.method protected constructor <init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V
    .locals 2
    .param p1, "valueType"    # Lcom/dropbox/sync/android/DbxFields$ValueType;
    .param p2, "type"    # Lcom/dropbox/sync/android/DbxFields$AtomType;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxValue;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;)V

    .line 14
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Atom type can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAtom;->mAtomType:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 16
    return-void
.end method

.method public static create(D)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/sync/android/DbxDoubleValue;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxDoubleValue;-><init>(D)V

    return-object v0
.end method

.method public static create(J)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 43
    new-instance v0, Lcom/dropbox/sync/android/DbxLongValue;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxLongValue;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/sync/android/DbxStringValue;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxStringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxAtom;
    .locals 4
    .param p0, "v"    # Ljava/util/Date;

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/sync/android/DbxDateValue;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dropbox/sync/android/DbxDateValue;-><init>(J)V

    return-object v0
.end method

.method public static create(Z)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 29
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->TRUE:Lcom/dropbox/sync/android/DbxBooleanValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->FALSE:Lcom/dropbox/sync/android/DbxBooleanValue;

    goto :goto_0
.end method

.method public static create([B)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "v"    # [B

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/sync/android/DbxBytesValue;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxBytesValue;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public atomType()Lcom/dropbox/sync/android/DbxFields$AtomType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAtom;->mAtomType:Lcom/dropbox/sync/android/DbxFields$AtomType;

    return-object v0
.end method

.method abstract getNativeAtom()J
.end method
