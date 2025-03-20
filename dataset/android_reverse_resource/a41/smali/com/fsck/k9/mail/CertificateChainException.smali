.class public Lcom/fsck/k9/mail/CertificateChainException;
.super Ljava/security/cert/CertificateException;
.source "CertificateChainException.java"


# static fields
.field private static final serialVersionUID:J = 0xf51d235c79eb9fbL


# instance fields
.field private mCertChain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1, p3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/CertificateChainException;->setCertChain([Ljava/security/cert/X509Certificate;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCertChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fsck/k9/mail/CertificateChainException;->mCertChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setCertChain([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/mail/CertificateChainException;->mCertChain:[Ljava/security/cert/X509Certificate;

    .line 23
    return-void
.end method
