.class public final Lcom/dropbox/sync/android/DbxPath;
.super Ljava/lang/Object;
.source "DbxPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxPath$InvalidPathException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dropbox/sync/android/DbxPath;",
        ">;"
    }
.end annotation


# static fields
.field public static final ROOT:Lcom/dropbox/sync/android/DbxPath;


# instance fields
.field private final mCanonPath:Ljava/lang/String;

.field private final mHashedPath:Ljava/lang/String;

.field private final mNativeHandle:J

.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/dropbox/sync/android/DbxPath;

    invoke-direct {v0}, Lcom/dropbox/sync/android/DbxPath;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/DbxPath;->ROOT:Lcom/dropbox/sync/android/DbxPath;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "/"

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "nativePathHandle"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->getInstance()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v0

    .line 100
    .local v0, "nl":Lcom/dropbox/sync/android/NativeLib;
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->getOriginalPath(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->getCanonicalPath(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->getHashedPath(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mHashedPath:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->incrementPathRef(J)V

    .line 106
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/sync/android/DbxPath;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "childName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxPath$InvalidPathException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p1, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/dropbox/sync/android/DbxPath;->makeChildPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxPath$InvalidPathException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->getInstance()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v1

    .line 54
    .local v1, "nl":Lcom/dropbox/sync/android/NativeLib;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeLib;->createPath(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/NativeLib;->getOriginalPath(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    .line 62
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/NativeLib;->getCanonicalPath(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    .line 63
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/NativeLib;->getHashedPath(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mHashedPath:Ljava/lang/String;

    .line 64
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
    new-instance v2, Lcom/dropbox/sync/android/DbxPath$InvalidPathException;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/dropbox/sync/android/DbxPath$InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private equals(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 2
    .param p1, "o"    # Lcom/dropbox/sync/android/DbxPath;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static makeChildPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parentPath"    # Ljava/lang/String;
    .param p1, "childName"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/dropbox/sync/android/DbxPath;)I
    .locals 2
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxPath;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Lcom/dropbox/sync/android/DbxPath;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxPath;->compareTo(Lcom/dropbox/sync/android/DbxPath;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/dropbox/sync/android/DbxPath;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxPath;->equals(Lcom/dropbox/sync/android/DbxPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->getInstance()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeLib;->releasePathRef(J)V

    .line 118
    :cond_0
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxPath;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/dropbox/sync/android/DbxPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/dropbox/sync/android/DbxPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Lcom/dropbox/sync/android/DbxPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeHandle()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxPath;->mNativeHandle:J

    return-wide v0
.end method

.method public getParent()Lcom/dropbox/sync/android/DbxPath;
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 226
    :goto_0
    return-object v1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, "lastSlash":I
    if-nez v0, :cond_1

    .line 224
    sget-object v1, Lcom/dropbox/sync/android/DbxPath;->ROOT:Lcom/dropbox/sync/android/DbxPath;

    goto :goto_0

    .line 226
    :cond_1
    new-instance v1, Lcom/dropbox/sync/android/DbxPath;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxPath;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDescendantOf(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 3
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;

    .prologue
    .line 254
    iget-object v0, p1, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/dropbox/sync/android/DbxPath;->mCanonPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSameOrDescendantOf(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 1
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxPath;->equals(Lcom/dropbox/sync/android/DbxPath;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxPath;->isDescendantOf(Lcom/dropbox/sync/android/DbxPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mHashedPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPath;->mPath:Ljava/lang/String;

    return-object v0
.end method
