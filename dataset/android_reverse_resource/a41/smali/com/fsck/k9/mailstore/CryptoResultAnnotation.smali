.class public final Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
.super Ljava/lang/Object;
.source "CryptoResultAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    }
.end annotation


# instance fields
.field private final encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field private final errorType:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field private final openPgpError:Lorg/openintents/openpgp/OpenPgpError;

.field private final openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

.field private final openPgpPendingIntent:Landroid/app/PendingIntent;

.field private final openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

.field private final overrideCryptoWarning:Z

.field private final replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V
    .locals 1
    .param p1, "errorType"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "replacementData"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .param p3, "openPgpDecryptionResult"    # Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .param p4, "openPgpSignatureResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .param p5, "openPgpPendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "openPgpInsecureWarningPendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "openPgpError"    # Lorg/openintents/openpgp/OpenPgpError;
    .param p8, "overrideCryptoWarning"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 36
    iput-object p2, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 38
    iput-object p3, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 39
    iput-object p4, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 40
    iput-object p5, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 41
    iput-object p7, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 42
    iput-object p6, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 43
    iput-boolean p8, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->overrideCryptoWarning:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 2
    .param p1, "annotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .param p2, "encapsulatedResult"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot replace an encapsulated result, this is a bug!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 54
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 56
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 57
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 58
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 59
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 60
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 61
    iget-boolean v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->overrideCryptoWarning:Z

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->overrideCryptoWarning:Z

    .line 63
    iput-object p2, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 64
    return-void
.end method

.method public static createErrorAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 9
    .param p0, "error"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .param p1, "replacementData"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    const/4 v3, 0x0

    .line 77
    sget-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_OK:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    if-ne p0, v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CryptoError must be actual error state!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    return-object v0
.end method

.method public static createOpenPgpCanceledAnnotation()Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_UI_CANCELED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    return-object v0
.end method

.method public static createOpenPgpEncryptionErrorAnnotation(Lorg/openintents/openpgp/OpenPgpError;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 9
    .param p0, "error"    # Lorg/openintents/openpgp/OpenPgpError;

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    return-object v0
.end method

.method public static createOpenPgpResultAnnotation(Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/fsck/k9/mail/internet/MimeBodyPart;Z)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 9
    .param p0, "decryptionResult"    # Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .param p1, "signatureResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "insecureWarningPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "replacementPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .param p5, "overrideCryptoWarning"    # Z

    .prologue
    .line 71
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_OK:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    return-object v0
.end method

.method public static createOpenPgpSignatureErrorAnnotation(Lorg/openintents/openpgp/OpenPgpError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 9
    .param p0, "error"    # Lorg/openintents/openpgp/OpenPgpError;
    .param p1, "replacementData"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    return-object v0
.end method


# virtual methods
.method public getEncapsulatedResult()Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    return-object v0
.end method

.method public getErrorType()Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    return-object v0
.end method

.method public getOpenPgpDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    return-object v0
.end method

.method public getOpenPgpError()Lorg/openintents/openpgp/OpenPgpError;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    return-object v0
.end method

.method public getOpenPgpInsecureWarningPendingIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOpenPgpPendingIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOpenPgpSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    return-object v0
.end method

.method public getOpenPgpSigningKeyIntentIfAny()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasSignatureResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasSignatureResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReplacementData()Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    return-object v0
.end method

.method public hasEncapsulatedResult()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenPgpInsecureWarningPendingIntent()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReplacementData()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignatureResult()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 104
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenPgpResult()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrideSecurityWarning()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->overrideCryptoWarning:Z

    return v0
.end method

.method public withEncapsulatedResult(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 1
    .param p1, "resultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    return-object v0
.end method
