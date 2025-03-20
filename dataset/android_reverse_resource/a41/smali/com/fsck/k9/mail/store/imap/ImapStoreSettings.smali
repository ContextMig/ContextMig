.class public Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
.super Lcom/fsck/k9/mail/ServerSettings;
.source "ImapStoreSettings.java"


# static fields
.field public static final AUTODETECT_NAMESPACE_KEY:Ljava/lang/String; = "autoDetectNamespace"

.field public static final PATH_PREFIX_KEY:Ljava/lang/String; = "pathPrefix"


# instance fields
.field public final autoDetectNamespace:Z

.field public final pathPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;
    .param p4, "authenticationType"    # Lcom/fsck/k9/mail/AuthType;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "clientCertificateAlias"    # Ljava/lang/String;
    .param p8, "autodetectNamespace"    # Z
    .param p9, "pathPrefix"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v2, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

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
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->autoDetectNamespace:Z

    .line 34
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    .line 35
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
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "autoDetectNamespace"

    iget-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->autoDetectNamespace:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "pathPrefix"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public newPassword(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 10
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->host:Ljava/lang/String;

    iget v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->port:I

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->clientCertificateAlias:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->autoDetectNamespace:Z

    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method
