.class Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;
.super Ljava/lang/Object;
.source "ConnectionSecurityHolder.java"


# instance fields
.field final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ConnectionSecurity;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 14
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->resources:Landroid/content/res/Resources;

    .line 15
    return-void
.end method

.method private resourceId()I
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder$1;->$SwitchMap$com$fsck$k9$mail$ConnectionSecurity:[I

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 28
    :pswitch_0
    const v0, 0x7f0700e6

    goto :goto_0

    .line 29
    :pswitch_1
    const v0, 0x7f0700e8

    goto :goto_0

    .line 30
    :pswitch_2
    const v0, 0x7f0700e7

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->resourceId()I

    move-result v0

    .line 19
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/ConnectionSecurity;->name()Ljava/lang/String;

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
