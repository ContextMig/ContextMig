.class Lcom/dropbox/sync/android/DbxBooleanValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxBooleanValue.java"


# static fields
.field static final FALSE:Lcom/dropbox/sync/android/DbxBooleanValue;

.field static final TRUE:Lcom/dropbox/sync/android/DbxBooleanValue;


# instance fields
.field public final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/dropbox/sync/android/DbxBooleanValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxBooleanValue;-><init>(Z)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->TRUE:Lcom/dropbox/sync/android/DbxBooleanValue;

    .line 8
    new-instance v0, Lcom/dropbox/sync/android/DbxBooleanValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxBooleanValue;-><init>(Z)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBooleanValue;->FALSE:Lcom/dropbox/sync/android/DbxBooleanValue;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "v"    # Z

    .prologue
    .line 16
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 17
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    .line 18
    return-void
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    return v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 3
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 28
    :cond_0
    if-ne p0, p1, :cond_2

    .line 32
    :cond_1
    :goto_0
    return v1

    .line 29
    :cond_2
    instance-of v2, p1, Lcom/dropbox/sync/android/DbxBooleanValue;

    if-nez v2, :cond_3

    .line 30
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v2, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxValue;->asBoolean()Z

    move-result v0

    .line 32
    .local v0, "otherValue":Z
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    if-eq v2, v0, :cond_1

    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxBooleanValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v2, p1, Lcom/dropbox/sync/android/DbxBooleanValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    check-cast p1, Lcom/dropbox/sync/android/DbxBooleanValue;

    .end local p1    # "other":Ljava/lang/Object;
    iget-boolean v3, p1, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeBooleanAtom(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeBooleanValue(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    if-eqz v0, :cond_0

    const v0, 0x45b8d4c7

    :goto_0
    return v0

    :cond_0
    const v0, -0x340e8dfd    # -3.1646726E7f

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxBooleanValue;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
