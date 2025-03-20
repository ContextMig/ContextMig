.class Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/imap/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreImapSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Lcom/fsck/k9/mail/store/imap/ImapStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p2, "x1"    # Lcom/fsck/k9/mail/store/imap/ImapStore$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;)V

    return-void
.end method


# virtual methods
.method public getAuthType()Lcom/fsck/k9/mail/AuthType;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$400(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$700(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCombinedPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$1100(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$300(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$100(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$600(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$1000(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$900(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$200(Lcom/fsck/k9/mail/store/imap/ImapStore;)I

    move-result v0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$500(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCombinedPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$1102(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setPathDelimiter(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$1002(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setPathPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$902(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    return-void
.end method

.method public useCompression(Lcom/fsck/k9/mail/NetworkType;)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/NetworkType;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->access$800(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/store/StoreConfig;->useCompression(Lcom/fsck/k9/mail/NetworkType;)Z

    move-result v0

    return v0
.end method
