.class Lde/cketti/safecontentresolver/SafeContentResolverApi14;
.super Lde/cketti/safecontentresolver/SafeContentResolver;
.source "SafeContentResolverApi14.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolver;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lde/cketti/safecontentresolver/Os;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private extractSystemFileDescriptor(Ljava/io/FileDescriptor;)I
    .locals 4
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    .local v0, "descriptor":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 48
    .end local v0    # "descriptor":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Couldn\'t find field that holds system file descriptor"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "descriptor":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Couldn\'t read system file descriptor"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 36
    :try_start_0
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolverApi14;->extractSystemFileDescriptor(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 38
    .local v1, "systemFileDescriptor":I
    invoke-static {v1}, Lde/cketti/safecontentresolver/Os;->fstat(I)I
    :try_end_0
    .catch Lde/cketti/safecontentresolver/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 39
    .end local v1    # "systemFileDescriptor":I
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method
