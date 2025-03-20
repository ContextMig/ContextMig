.class public Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
.super Lcom/fsck/k9/mail/ServerSettings;
.source "WebDavStoreSettings.java"


# static fields
.field public static final ALIAS_KEY:Ljava/lang/String; = "alias"

.field public static final AUTH_PATH_KEY:Ljava/lang/String; = "authPath"

.field public static final MAILBOX_PATH_KEY:Ljava/lang/String; = "mailboxPath"

.field public static final PATH_KEY:Ljava/lang/String; = "path"


# instance fields
.field public final alias:Ljava/lang/String;

.field public final authPath:Ljava/lang/String;

.field public final mailboxPath:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;
    .param p4, "authenticationType"    # Lcom/fsck/k9/mail/AuthType;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "clientCertificateAlias"    # Ljava/lang/String;
    .param p8, "alias"    # Ljava/lang/String;
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "authPath"    # Ljava/lang/String;
    .param p11, "mailboxPath"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v2, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->alias:Ljava/lang/String;

    .line 34
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    .line 36
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "alias"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "path"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "authPath"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "mailboxPath"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method public newPassword(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 12
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->host:Ljava/lang/String;

    iget v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->port:I

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->clientCertificateAlias:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->alias:Ljava/lang/String;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
