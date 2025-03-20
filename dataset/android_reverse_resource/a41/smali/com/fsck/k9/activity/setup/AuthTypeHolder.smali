.class Lcom/fsck/k9/activity/setup/AuthTypeHolder;
.super Ljava/lang/Object;
.source "AuthTypeHolder.java"


# instance fields
.field final authType:Lcom/fsck/k9/mail/AuthType;

.field private insecure:Z

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/AuthType;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "authType"    # Lcom/fsck/k9/mail/AuthType;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 15
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->resources:Landroid/content/res/Resources;

    .line 16
    return-void
.end method

.method private resourceId()I
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/fsck/k9/activity/setup/AuthTypeHolder$1;->$SwitchMap$com$fsck$k9$mail$AuthType:[I

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/AuthType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->insecure:Z

    if-eqz v0, :cond_0

    .line 36
    const v0, 0x7f0700b6

    goto :goto_0

    .line 38
    :cond_0
    const v0, 0x7f0700b7

    goto :goto_0

    .line 41
    :pswitch_1
    const v0, 0x7f0700b5

    goto :goto_0

    .line 43
    :pswitch_2
    const v0, 0x7f0700b8

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public setInsecure(Z)V
    .locals 0
    .param p1, "insecure"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->insecure:Z

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->resourceId()I

    move-result v0

    .line 25
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
