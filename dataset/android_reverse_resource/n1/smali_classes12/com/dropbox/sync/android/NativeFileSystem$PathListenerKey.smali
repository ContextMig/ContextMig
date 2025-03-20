.class final Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathListenerKey"
.end annotation


# static fields
.field private static MAX_MODE:I = 0x0

.field private static MIN_MODE:I = 0x0

.field public static final MODE_PATH_AND_CHILDREN:I = 0x1

.field public static final MODE_PATH_AND_DESCENDANTS:I = 0x2

.field public static final MODE_PATH_ONLY:I


# instance fields
.field public final nativeMode:I

.field public final path:Lcom/dropbox/sync/android/DbxPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MIN_MODE:I

    .line 180
    const/4 v0, 0x2

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MAX_MODE:I

    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxPath;I)V
    .locals 3
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "nativeMode"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    .line 202
    sget v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MIN_MODE:I

    if-lt p2, v0, :cond_1

    sget v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MAX_MODE:I

    if-le p2, v0, :cond_2

    .line 203
    :cond_1
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeMode must be in the range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MIN_MODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->MAX_MODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2
    iput p2, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    .line 207
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-ne p0, p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 215
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 217
    check-cast v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    .line 218
    .local v0, "other":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/DbxPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    iget v4, v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 224
    const/16 v0, 0x11

    .line 225
    .local v0, "result":I
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxPath;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 226
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    add-int v0, v1, v2

    .line 227
    return v0
.end method
