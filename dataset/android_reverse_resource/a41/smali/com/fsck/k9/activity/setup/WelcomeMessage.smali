.class public Lcom/fsck/k9/activity/setup/WelcomeMessage;
.super Lcom/fsck/k9/activity/K9Activity;
.source "WelcomeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method public static showWelcomeMessage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/WelcomeMessage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 43
    :sswitch_0
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->finish()V

    goto :goto_0

    .line 48
    :sswitch_1
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->importSettings(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->finish()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x7f0c000d -> :sswitch_0
        0x7f0c010c -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->setContentView(I)V

    .line 31
    const v1, 0x7f0c0107

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "welcome":Landroid/widget/TextView;
    const v1, 0x7f07012b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 35
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f0c010c

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
