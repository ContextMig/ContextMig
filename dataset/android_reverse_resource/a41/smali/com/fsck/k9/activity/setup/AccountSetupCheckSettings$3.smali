.class synthetic Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fsck$k9$activity$setup$AccountSetupCheckSettings$CheckDirection:[I

.field static final synthetic $SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 465
    invoke-static {}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->values()[Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$activity$setup$AccountSetupCheckSettings$CheckDirection:[I

    :try_start_0
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$activity$setup$AccountSetupCheckSettings$CheckDirection:[I

    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$activity$setup$AccountSetupCheckSettings$CheckDirection:[I

    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 388
    :goto_1
    invoke-static {}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->values()[Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    :try_start_2
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->Expired:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->MissingCapability:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->RetrievalFailure:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->UseMessage:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->Unknown:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    .line 465
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
