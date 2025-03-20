.class public Lcom/fsck/k9/mail/CertificateValidationException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "CertificateValidationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/CertificateValidationException$Reason;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCertChain:[Ljava/security/cert/X509Certificate;

.field private mNeedsUserAttention:Z

.field private final mReason:Lcom/fsck/k9/mail/CertificateValidationException$Reason;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/CertificateValidationException$Reason;)V
    .locals 1
    .param p1, "reason"    # Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, p1, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->UseMessage:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/CertificateValidationException$Reason;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/fsck/k9/mail/CertificateValidationException$Reason;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mNeedsUserAttention:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mNeedsUserAttention:Z

    .line 38
    iput-object p2, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mReason:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    .line 39
    iput-object p3, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mAlias:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mNeedsUserAttention:Z

    .line 44
    sget-object v0, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->Unknown:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    iput-object v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mReason:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    .line 45
    invoke-direct {p0}, Lcom/fsck/k9/mail/CertificateValidationException;->scanForCause()V

    .line 46
    return-void
.end method

.method private scanForCause()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/mail/CertificateValidationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 90
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/security/cert/CertPathValidatorException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/security/KeyChainException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v0, :cond_2

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mNeedsUserAttention:Z

    .line 102
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 103
    :goto_1
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/fsck/k9/mail/CertificateChainException;

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/fsck/k9/mail/CertificateChainException;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 109
    check-cast v1, Lcom/fsck/k9/mail/CertificateChainException;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateChainException;->getCertChain()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mCertChain:[Ljava/security/cert/X509Certificate;

    .line 112
    :cond_2
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mCertChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReason()Lcom/fsck/k9/mail/CertificateValidationException$Reason;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mReason:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    return-object v0
.end method

.method public needsUserAttention()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/fsck/k9/mail/CertificateValidationException;->mNeedsUserAttention:Z

    return v0
.end method
