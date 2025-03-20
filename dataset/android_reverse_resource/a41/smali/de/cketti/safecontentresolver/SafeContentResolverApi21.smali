.class final Lde/cketti/safecontentresolver/SafeContentResolverApi21;
.super Lde/cketti/safecontentresolver/SafeContentResolver;
.source "SafeContentResolverApi21.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolver;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getFileUidOrThrow(Ljava/io/FileDescriptor;)I
    .locals 4
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 38
    .local v1, "st":Landroid/system/StructStat;
    iget v2, v1, Landroid/system/StructStat;->st_uid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 39
    .end local v1    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
