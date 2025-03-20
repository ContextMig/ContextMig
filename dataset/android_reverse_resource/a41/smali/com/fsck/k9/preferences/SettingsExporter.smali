.class public Lcom/fsck/k9/preferences/SettingsExporter;
.super Ljava/lang/Object;
.source "SettingsExporter.java"


# static fields
.field static final ACCOUNTS_ELEMENT:Ljava/lang/String; = "accounts"

.field static final ACCOUNT_ELEMENT:Ljava/lang/String; = "account"

.field static final AUTHENTICATION_TYPE_ELEMENT:Ljava/lang/String; = "authentication-type"

.field static final CLIENT_CERTIFICATE_ALIAS_ELEMENT:Ljava/lang/String; = "client-cert-alias"

.field static final CONNECTION_SECURITY_ELEMENT:Ljava/lang/String; = "connection-security"

.field static final DESCRIPTION_ELEMENT:Ljava/lang/String; = "description"

.field static final EMAIL_ELEMENT:Ljava/lang/String; = "email"

.field public static final EXPORT_FILENAME_PREFIX:Ljava/lang/String; = "k9_settings_export"

.field public static final EXPORT_FILENAME_SUFFIX:Ljava/lang/String; = "k9s"

.field static final EXTRA_ELEMENT:Ljava/lang/String; = "extra"

.field static final FILE_FORMAT_ATTRIBUTE:Ljava/lang/String; = "format"

.field static final FILE_FORMAT_VERSION:I = 0x1

.field static final FOLDERS_ELEMENT:Ljava/lang/String; = "folders"

.field static final FOLDER_ELEMENT:Ljava/lang/String; = "folder"

.field static final GLOBAL_ELEMENT:Ljava/lang/String; = "global"

.field static final HOST_ELEMENT:Ljava/lang/String; = "host"

.field static final IDENTITIES_ELEMENT:Ljava/lang/String; = "identities"

.field static final IDENTITY_ELEMENT:Ljava/lang/String; = "identity"

.field static final INCOMING_SERVER_ELEMENT:Ljava/lang/String; = "incoming-server"

.field static final KEY_ATTRIBUTE:Ljava/lang/String; = "key"

.field static final NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field static final NAME_ELEMENT:Ljava/lang/String; = "name"

.field static final OUTGOING_SERVER_ELEMENT:Ljava/lang/String; = "outgoing-server"

.field static final PASSWORD_ELEMENT:Ljava/lang/String; = "password"

.field static final PORT_ELEMENT:Ljava/lang/String; = "port"

.field static final ROOT_ELEMENT:Ljava/lang/String; = "k9settings"

.field static final SETTINGS_ELEMENT:Ljava/lang/String; = "settings"

.field static final TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field static final USERNAME_ELEMENT:Ljava/lang/String; = "username"

.field static final UUID_ATTRIBUTE:Ljava/lang/String; = "uuid"

.field static final VALUE_ELEMENT:Ljava/lang/String; = "value"

.field static final VERSION_ATTRIBUTE:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeOrThrow(Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static exportPreferences(Landroid/content/Context;Ljava/io/OutputStream;ZLjava/util/Set;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "includeGlobals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/OutputStream;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 139
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "UTF-8"

    invoke-interface {v7, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 141
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 146
    const/4 v9, 0x0

    const-string v10, "k9settings"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const/4 v9, 0x0

    const-string v10, "version"

    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/4 v9, 0x0

    const-string v10, "format"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v9, "Exporting preferences"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    .line 153
    .local v5, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v8

    .line 156
    .local v8, "storage":Lcom/fsck/k9/preferences/Storage;
    if-nez p3, :cond_0

    .line 157
    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 159
    .local v4, "exportAccounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 160
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v4    # "exportAccounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "preferences":Lcom/fsck/k9/Preferences;
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "storage":Lcom/fsck/k9/preferences/Storage;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "preferences":Lcom/fsck/k9/Preferences;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "storage":Lcom/fsck/k9/preferences/Storage;
    :cond_0
    move-object v4, p3

    .line 166
    .restart local v4    # "exportAccounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/TreeMap;

    invoke-virtual {v8}, Lcom/fsck/k9/preferences/Storage;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 168
    .local v6, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    .line 169
    const/4 v9, 0x0

    const-string v10, "global"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    invoke-static {v7, v6}, Lcom/fsck/k9/preferences/SettingsExporter;->writeSettings(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 171
    const/4 v9, 0x0

    const-string v10, "global"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    :cond_2
    const/4 v9, 0x0

    const-string v10, "accounts"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "accountUuid":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 177
    .restart local v0    # "account":Lcom/fsck/k9/Account;
    invoke-static {v7, v0, v6}, Lcom/fsck/k9/preferences/SettingsExporter;->writeAccount(Lorg/xmlpull/v1/XmlSerializer;Lcom/fsck/k9/Account;Ljava/util/Map;)V

    goto :goto_1

    .line 179
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accountUuid":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    const-string v10, "accounts"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const/4 v9, 0x0

    const-string v10, "k9settings"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 183
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    return-void
.end method

.method public static exportToFile(Landroid/content/Context;ZLjava/util/Set;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeGlobals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 88
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    const-string v6, "Unable to create directory: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/fsck/k9/preferences/SettingsExporter;->generateDatedExportFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/fsck/k9/helper/FileHelper;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 94
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p0, v5, p1, p2}, Lcom/fsck/k9/preferences/SettingsExporter;->exportPreferences(Landroid/content/Context;Ljava/io/OutputStream;ZLjava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v5}, Lcom/fsck/k9/preferences/SettingsExporter;->closeOrThrow(Ljava/io/OutputStream;)V

    .line 100
    return-object v3

    .line 101
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v6, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-direct {v6, v1}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_1
    invoke-static {v4}, Lcom/fsck/k9/preferences/SettingsExporter;->closeOrThrow(Ljava/io/OutputStream;)V

    throw v6

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 101
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static exportToUri(Landroid/content/Context;ZLjava/util/Set;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeGlobals"    # Z
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 113
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 114
    invoke-static {p0, v1, p1, p2}, Lcom/fsck/k9/preferences/SettingsExporter;->exportPreferences(Landroid/content/Context;Ljava/io/OutputStream;ZLjava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v1}, Lcom/fsck/k9/preferences/SettingsExporter;->closeOrThrow(Ljava/io/OutputStream;)V

    .line 120
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-direct {v2, v0}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/fsck/k9/preferences/SettingsExporter;->closeOrThrow(Ljava/io/OutputStream;)V

    throw v2
.end method

.method public static generateDatedExportFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 541
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 542
    .local v1, "now":Ljava/util/Calendar;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "%s_%s.%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "k9_settings_export"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "k9s"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static writeAccount(Lorg/xmlpull/v1/XmlSerializer;Lcom/fsck/k9/Account;Ljava/util/Map;)V
    .locals 34
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v14, "identities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v11, "folders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "accountUuid":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "account"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const/16 v29, 0x0

    const-string v30, "uuid"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "description"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 230
    .local v21, "name":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 231
    const/16 v29, 0x0

    const-string v30, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const/16 v29, 0x0

    const-string v30, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/fsck/k9/mail/store/RemoteStore;->decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v16

    .line 238
    .local v16, "incoming":Lcom/fsck/k9/mail/ServerSettings;
    const/16 v29, 0x0

    const-string v30, "incoming-server"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    const/16 v29, 0x0

    const-string v30, "type"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/mail/ServerSettings$Type;->name()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string v29, "host"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, v16

    iget v0, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 243
    const-string v29, "port"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 246
    const-string v29, "connection-security"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/mail/ConnectionSecurity;->name()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 249
    const-string v29, "authentication-type"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_3
    const-string v29, "username"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v29, "client-cert-alias"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/ServerSettings;->getExtra()Ljava/util/Map;

    move-result-object v9

    .line 257
    .local v9, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v29

    if-lez v29, :cond_5

    .line 258
    const/16 v29, 0x0

    const-string v30, "extra"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 260
    .local v8, "extra":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v8    # "extra":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/16 v29, 0x0

    const-string v30, "extra"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    :cond_5
    const/16 v29, 0x0

    const-string v30, "incoming-server"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/fsck/k9/mail/TransportUris;->decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v22

    .line 270
    .local v22, "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    const/16 v29, 0x0

    const-string v30, "outgoing-server"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const/16 v29, 0x0

    const-string v30, "type"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/mail/ServerSettings$Type;->name()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    const-string v29, "host"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, v22

    iget v0, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    .line 275
    const-string v29, "port"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 278
    const-string v29, "connection-security"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/mail/ConnectionSecurity;->name()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 281
    const-string v29, "authentication-type"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_8
    const-string v29, "username"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v29, "client-cert-alias"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/ServerSettings;->getExtra()Ljava/util/Map;

    move-result-object v9

    .line 289
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v29

    if-lez v29, :cond_a

    .line 290
    const/16 v29, 0x0

    const-string v30, "extra"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 292
    .restart local v8    # "extra":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v8    # "extra":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/16 v29, 0x0

    const-string v30, "extra"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_a
    const/16 v29, 0x0

    const-string v30, "outgoing-server"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    const/16 v29, 0x0

    const-string v30, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_b
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 303
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 304
    .local v18, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    .line 305
    .local v27, "valueString":Ljava/lang/String;
    const-string v30, "\\."

    const/16 v31, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "comps":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_b

    .line 312
    const/16 v30, 0x0

    aget-object v20, v5, v30

    .line 313
    .local v20, "keyUuid":Ljava/lang/String;
    const/16 v30, 0x1

    aget-object v19, v5, v30

    .line 315
    .local v19, "keyPart":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 320
    const-string v30, "."

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 321
    .local v17, "indexOfLastDot":I
    const/16 v30, -0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    const/4 v12, 0x1

    .line 322
    .local v12, "hasThirdPart":Z
    :goto_3
    if-eqz v12, :cond_e

    .line 323
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 324
    .local v23, "secondPart":Ljava/lang/String;
    add-int/lit8 v30, v17, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 326
    .local v26, "thirdPart":Ljava/lang/String;
    const-string v30, "description"

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 329
    :try_start_0
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 330
    :catch_0
    move-exception v30

    goto/16 :goto_2

    .line 321
    .end local v12    # "hasThirdPart":Z
    .end local v23    # "secondPart":Ljava/lang/String;
    .end local v26    # "thirdPart":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 335
    .restart local v12    # "hasThirdPart":Z
    .restart local v23    # "secondPart":Ljava/lang/String;
    .restart local v26    # "thirdPart":Ljava/lang/String;
    :cond_d
    sget-object v30, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 337
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 343
    .end local v23    # "secondPart":Ljava/lang/String;
    .end local v26    # "thirdPart":Ljava/lang/String;
    :cond_e
    sget-object v30, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/TreeMap;

    .line 345
    .local v28, "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    if-eqz v28, :cond_b

    .line 346
    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 347
    .local v13, "highestVersion":Ljava/lang/Integer;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 349
    .local v24, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v24, :cond_b

    .line 352
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 353
    :catch_1
    move-exception v6

    .line 354
    .local v6, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    const-string v30, "Account setting \"%s\" (%s) has invalid value \"%s\" in preference storage. This shouldn\'t happen!"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v19, v31, v32

    const/16 v32, 0x1

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    aput-object v27, v31, v32

    .line 354
    invoke-static/range {v30 .. v31}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 360
    .end local v5    # "comps":[Ljava/lang/String;
    .end local v6    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "hasThirdPart":Z
    .end local v13    # "highestVersion":Ljava/lang/Integer;
    .end local v17    # "indexOfLastDot":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "keyPart":Ljava/lang/String;
    .end local v20    # "keyUuid":Ljava/lang/String;
    .end local v24    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v27    # "valueString":Ljava/lang/String;
    .end local v28    # "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_f
    const/16 v29, 0x0

    const-string v30, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v29

    if-lez v29, :cond_11

    .line 363
    const/16 v29, 0x0

    const-string v30, "identities"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .local v25, "sortedIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 369
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 370
    .local v15, "identityIndex":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2}, Lcom/fsck/k9/preferences/SettingsExporter;->writeIdentity(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 372
    .end local v15    # "identityIndex":Ljava/lang/Integer;
    :cond_10
    const/16 v29, 0x0

    const-string v30, "identities"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    .end local v25    # "sortedIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_11
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v29

    if-lez v29, :cond_13

    .line 376
    const/16 v29, 0x0

    const-string v30, "folders"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_12

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 378
    .local v10, "folder":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v4, v10, v1}, Lcom/fsck/k9/preferences/SettingsExporter;->writeFolder(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 380
    .end local v10    # "folder":Ljava/lang/String;
    :cond_12
    const/16 v29, 0x0

    const-string v30, "folders"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    :cond_13
    const/16 v29, 0x0

    const-string v30, "account"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    return-void
.end method

.method private static writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 506
    if-eqz p2, :cond_0

    .line 507
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    :cond_0
    return-void
.end method

.method private static writeFolder(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 18
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    .local p3, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v14, 0x0

    const-string v15, "folder"

    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const/4 v14, 0x0

    const-string v15, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v14, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 464
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 465
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 466
    .local v12, "valueString":Ljava/lang/String;
    const/16 v15, 0x2e

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 467
    .local v7, "indexOfFirstDot":I
    const/16 v15, 0x2e

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 469
    .local v8, "indexOfLastDot":I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_0

    const/4 v15, -0x1

    if-eq v8, v15, :cond_0

    if-eq v7, v8, :cond_0

    .line 474
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 475
    .local v10, "keyUuid":Ljava/lang/String;
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "folderName":Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "folderKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 483
    sget-object v15, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/TreeMap;

    .line 485
    .local v13, "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    if-eqz v13, :cond_0

    .line 486
    invoke-virtual {v13}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 487
    .local v6, "highestVersion":Ljava/lang/Integer;
    invoke-virtual {v13, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 489
    .local v11, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v11, :cond_0

    .line 492
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v4, v11, v12}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    const-string v15, "Folder setting \"%s\" has invalid value \"%s\" in preference storage. This shouldn\'t happen!"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 501
    .end local v2    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "folderKey":Ljava/lang/String;
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "highestVersion":Ljava/lang/Integer;
    .end local v7    # "indexOfFirstDot":I
    .end local v8    # "indexOfLastDot":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keyUuid":Ljava/lang/String;
    .end local v11    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v12    # "valueString":Ljava/lang/String;
    .end local v13    # "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_1
    const/4 v14, 0x0

    const-string v15, "folder"

    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    return-void
.end method

.method private static writeIdentity(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 23
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    .local p3, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v19, 0x0

    const-string v20, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 392
    .local v14, "prefix":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 395
    .local v16, "suffix":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "name"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 396
    .local v13, "name":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "email"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 402
    .local v6, "email":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "email"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const/16 v19, 0x0

    const-string v20, "email"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "description"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    .local v4, "description":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 409
    const/16 v19, 0x0

    const-string v20, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    const/16 v19, 0x0

    const-string v20, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    :cond_0
    const/16 v19, 0x0

    const-string v20, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 417
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 418
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 419
    .local v17, "valueString":Ljava/lang/String;
    const-string v20, "\\."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "comps":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 426
    const/16 v20, 0x0

    aget-object v12, v3, v20

    .line 427
    .local v12, "keyUuid":Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v10, v3, v20

    .line 428
    .local v10, "identityKey":Ljava/lang/String;
    const/16 v20, 0x2

    aget-object v9, v3, v20

    .line 429
    .local v9, "identityIndex":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 434
    sget-object v20, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/TreeMap;

    .line 436
    .local v18, "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    if-eqz v18, :cond_1

    .line 437
    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 438
    .local v8, "highestVersion":Ljava/lang/Integer;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 440
    .local v15, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v15, :cond_1

    .line 443
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v10, v15, v1}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v5

    .line 445
    .local v5, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    const-string v20, "Identity setting \"%s\" has invalid value \"%s\" in preference storage. This shouldn\'t happen!"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 451
    .end local v3    # "comps":[Ljava/lang/String;
    .end local v5    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "highestVersion":Ljava/lang/Integer;
    .end local v9    # "identityIndex":Ljava/lang/String;
    .end local v10    # "identityKey":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keyUuid":Ljava/lang/String;
    .end local v15    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v17    # "valueString":Ljava/lang/String;
    .end local v18    # "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_2
    const/16 v19, 0x0

    const-string v20, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    const/16 v19, 0x0

    const-string v20, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    return-void
.end method

.method private static writeKeyAndDefaultValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    .local p2, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;, "Lcom/fsck/k9/preferences/Settings$SettingsDescription<TT;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "outputValue":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private static writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "valueString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;, "Lcom/fsck/k9/preferences/Settings$SettingsDescription<TT;>;"
    invoke-virtual {p2, p3}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 517
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "outputValue":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private static writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "literalValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 532
    const-string v0, "value"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    const-string v0, "key"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    if-eqz p2, :cond_0

    .line 535
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    :cond_0
    const-string v0, "value"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    return-void
.end method

.method private static writeSettings(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 12
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 193
    sget-object v7, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 195
    .local v5, "versionedSetting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "valueString":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TreeMap;

    .line 198
    .local v6, "versions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, "highestVersion":Ljava/lang/Integer;
    invoke-virtual {v6, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 200
    .local v3, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v3, :cond_0

    .line 205
    if-eqz v4, :cond_1

    .line 207
    :try_start_0
    invoke-static {p0, v2, v3, v4}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndPrettyValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    const-string v8, "Global setting \"%s\" has invalid value \"%s\" in preference storage. This shouldn\'t happen!"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    .end local v0    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    :cond_1
    const-string v8, "Couldn\'t find key \"%s\" in preference storage. Using default value."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {p0, v2, v3}, Lcom/fsck/k9/preferences/SettingsExporter;->writeKeyAndDefaultValueFromSetting(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    goto :goto_0

    .line 217
    .end local v1    # "highestVersion":Ljava/lang/Integer;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "versionedSetting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    .end local v6    # "versions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_2
    return-void
.end method
