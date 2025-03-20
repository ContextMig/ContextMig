.class Lcom/fsck/k9/ui/messageview/DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "DownloadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "saved_image"

.field private static final DISPLAY_NAME_INDEX:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private downloadAndStoreImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 83
    .local v0, "conn":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 85
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v5}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getFileNameFromUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getMimeType(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "mimeType":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getFileNameWithExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "fileNameWithExtension":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->writeFileToStorage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 91
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 89
    return-object v6

    .line 91
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fileNameWithExtension":Ljava/lang/String;
    .end local v4    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
.end method

.method private fetchAndStoreImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 122
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v5}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getFileNameFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0, v5, v1}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 127
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v1, v4}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->getFileNameWithExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "fileNameWithExtension":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->writeFileToStorage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 130
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 128
    return-object v6

    .line 130
    .end local v2    # "fileNameWithExtension":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
.end method

.method private getFileNameFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v7, "saved_image"

    .line 146
    .local v7, "displayName":Ljava/lang/String;
    sget-object v2, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 149
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 153
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    return-object v7

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFileNameFromUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "path":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, "start":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 101
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 103
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    const-string v0, "saved_image"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getFileNameWithExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 161
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 174
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 166
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_0
    const-string v0, "jpeg"

    .line 167
    .local v0, "extension":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 168
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "extensionFromMimeType":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 170
    move-object v0, v1

    .line 174
    .end local v1    # "extensionFromMimeType":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method private getMimeType(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "conn"    # Ljava/net/URLConnection;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method private writeFileToStorage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "sanitized":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "directory":Ljava/io/File;
    invoke-static {v0, v3}, Lcom/fsck/k9/helper/FileHelper;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p2, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 188
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 47
    aget-object v3, p1, v5

    .line 49
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 52
    .local v2, "isExternalImage":Z
    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->downloadAndStoreImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .end local v2    # "isExternalImage":Z
    :goto_0
    return-object v1

    .line 55
    .restart local v2    # "isExternalImage":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->fetchAndStoreImage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "isExternalImage":Z
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error while downloading image"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 67
    if-nez p1, :cond_0

    move v0, v2

    .line 70
    .local v0, "errorSavingFile":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->context:Landroid/content/Context;

    const v4, 0x7f070270

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->context:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    return-void

    .end local v0    # "errorSavingFile":Z
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 67
    goto :goto_0

    .line 73
    .restart local v0    # "errorSavingFile":Z
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->context:Landroid/content/Context;

    const v5, 0x7f07026f

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_1
.end method
