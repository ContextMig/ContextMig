.class public Lcom/fsck/k9/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/AttachmentProvider$AttachmentProviderColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.fsck.k9.attachmentprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "content://com.fsck.k9.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAttachmentDataSource(Ljava/lang/String;Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .locals 3
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 181
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getInstance(Lcom/fsck/k9/Account;Landroid/content/Context;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 182
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentDataSource(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v2

    return-object v2
.end method

.method public static getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p0, "accountUuid"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 49
    sget-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method private getType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 144
    .local v0, "account":Lcom/fsck/k9/Account;
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getInstance(Lcom/fsck/k9/Account;Landroid/content/Context;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    .line 146
    .local v3, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v3, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;

    move-result-object v1

    .line 147
    .local v1, "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    if-eqz p3, :cond_0

    .line 148
    move-object v4, p3

    .line 157
    .end local v1    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .end local v3    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .local v4, "type":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 150
    .end local v4    # "type":Ljava/lang/String;
    .restart local v1    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .restart local v3    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_0
    iget-object v4, v1, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->type:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "type":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v1    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .end local v3    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v5, "Unable to retrieve LocalStore for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v2, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const-string v4, "application/octet-stream"

    .restart local v4    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method private openAttachment(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 163
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentDataSource(Ljava/lang/String;Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v1

    .line 164
    .local v1, "openPgpDataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    if-nez v1, :cond_0

    .line 165
    const-string v3, "Error getting data source for attachment (part doesn\'t exist?)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .end local v1    # "openPgpDataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    :goto_0
    return-object v2

    .line 168
    .restart local v1    # "openPgpDataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    :cond_0
    invoke-virtual {v1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 169
    .end local v1    # "openPgpDataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Error getting InputStream for attachment"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Error creating ParcelFileDescriptor"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "accountUuid":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "id":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    const/4 v2, 0x0

    .line 67
    .local v2, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/provider/AttachmentProvider;->getType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 65
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "accountUuid":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "attachmentId":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/provider/AttachmentProvider;->openAttachment(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 77
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_0

    .line 78
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Attachment missing or cannot be opened!"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p2, :cond_0

    sget-object v4, Lcom/fsck/k9/provider/AttachmentProvider;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 88
    .local v4, "columnNames":[Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 89
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "accountUuid":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 94
    .local v8, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 95
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/fsck/k9/mailstore/LocalStore;->getInstance(Lcom/fsck/k9/Account;Landroid/content/Context;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .local v2, "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    if-nez v2, :cond_1

    .line 102
    const-string v12, "No attachment info for ID: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v9, 0x0

    .line 121
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    :goto_1
    return-object v9

    .end local v1    # "accountUuid":Ljava/lang/String;
    .end local v4    # "columnNames":[Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v4, p2

    .line 86
    goto :goto_0

    .line 96
    .restart local v1    # "accountUuid":Ljava/lang/String;
    .restart local v4    # "columnNames":[Ljava/lang/String;
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v12, "Unable to retrieve attachment info from local store for ID: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-static {v6, v12, v13}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const/4 v9, 0x0

    goto :goto_1

    .line 106
    .end local v6    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "account":Lcom/fsck/k9/Account;
    .restart local v2    # "attachmentInfo":Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    :cond_1
    new-instance v9, Landroid/database/MatrixCursor;

    invoke-direct {v9, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 107
    .local v9, "ret":Landroid/database/MatrixCursor;
    array-length v12, v4

    new-array v11, v12, [Ljava/lang/Object;

    .line 108
    .local v11, "values":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v5, v4

    .local v5, "count":I
    :goto_2
    if-ge v7, v5, :cond_6

    .line 109
    aget-object v3, v4, v7

    .line 110
    .local v3, "column":Ljava/lang/String;
    const-string v12, "_id"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 111
    aput-object v8, v11, v7

    .line 108
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 112
    :cond_3
    const-string v12, "_data"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    goto :goto_3

    .line 114
    :cond_4
    const-string v12, "_display_name"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 115
    iget-object v12, v2, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->name:Ljava/lang/String;

    aput-object v12, v11, v7

    goto :goto_3

    .line 116
    :cond_5
    const-string v12, "_size"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 117
    iget-wide v12, v2, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;->size:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v7

    goto :goto_3

    .line 120
    .end local v3    # "column":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
