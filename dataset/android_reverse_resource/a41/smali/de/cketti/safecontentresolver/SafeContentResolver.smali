.class public abstract Lde/cketti/safecontentresolver/SafeContentResolver;
.super Ljava/lang/Object;
.source "SafeContentResolver.java"


# instance fields
.field private final blacklist:Lde/cketti/safecontentresolver/Blacklist;

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->contentResolver:Landroid/content/ContentResolver;

    .line 98
    new-instance v0, Lde/cketti/safecontentresolver/Blacklist;

    invoke-direct {v0, p1}, Lde/cketti/safecontentresolver/Blacklist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->blacklist:Lde/cketti/safecontentresolver/Blacklist;

    .line 99
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'context\' must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi21;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi21;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected abstract getFileUidOrThrow(Ljava/io/FileDescriptor;)I
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Argument \'uri\' must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "scheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "authority":Ljava/lang/String;
    iget-object v2, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->blacklist:Lde/cketti/safecontentresolver/Blacklist;

    invoke-virtual {v2, v6}, Lde/cketti/safecontentresolver/Blacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content URI is owned by the application itself. Content provider is not whitelisted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v6    # "authority":Ljava/lang/String;
    :cond_1
    const-string v2, "file"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v2, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 148
    :goto_0
    return-object v2

    .line 137
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v8, "file":Ljava/io/File;
    const/high16 v2, 0x10000000

    invoke-static {v8, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 139
    .local v1, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 141
    .local v9, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v9}, Lde/cketti/safecontentresolver/SafeContentResolver;->getFileUidOrThrow(Ljava/io/FileDescriptor;)I

    move-result v10

    .line 142
    .local v10, "fileUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v10, v2, :cond_3

    .line 143
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is owned by the application itself"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_3
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 148
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
