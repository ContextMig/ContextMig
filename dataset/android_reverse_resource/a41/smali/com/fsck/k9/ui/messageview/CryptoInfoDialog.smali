.class public Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;
.super Landroid/app/DialogFragment;
.source "CryptoInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$OnClickShowCryptoKeyListener;
    }
.end annotation


# static fields
.field public static final ARG_DISPLAY_STATUS:Ljava/lang/String; = "display_status"

.field public static final ARG_HAS_SECURITY_WARNING:Ljava/lang/String; = "has_security_warning"

.field public static final ICON_ANIM_DELAY:I = 0x190

.field public static final ICON_ANIM_DURATION:I = 0x15e


# instance fields
.field private bottomIconFrame:Landroid/view/View;

.field private bottomIcon_1:Landroid/widget/ImageView;

.field private bottomIcon_2:Landroid/widget/ImageView;

.field private bottomText:Landroid/widget/TextView;

.field private dialogView:Landroid/view/View;

.field private topIconFrame:Landroid/view/View;

.field private topIcon_1:Landroid/widget/ImageView;

.field private topIcon_2:Landroid/widget/ImageView;

.field private topIcon_3:Landroid/widget/ImageView;

.field private topText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIconFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIconFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method public static newInstance(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;Z)Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;
    .locals 4
    .param p0, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .param p1, "hasSecurityWarning"    # Z

    .prologue
    .line 51
    new-instance v1, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-direct {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;-><init>()V

    .line 53
    .local v1, "frag":Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "display_status"

    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "has_security_warning"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private prepareIconAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 178
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    new-instance v1, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;-><init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 203
    return-void
.end method

.method private setMessageForDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 6
    .param p1, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .prologue
    .line 119
    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Crypto info dialog can only be displayed for items with text!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResBottom:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 124
    iget v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    iget-object v1, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    iget-object v3, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    .line 124
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->setMessageSingleLine(IIILjava/lang/Integer;)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "second icon must be non-null if second text is non-null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 131
    :cond_2
    iget v1, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResBottom:Ljava/lang/Integer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->setMessageWithAnimation(IIIII)V

    goto :goto_0
.end method

.method private setMessageSingleLine(IIILjava/lang/Integer;)V
    .locals 4
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "topTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "statusIconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "statusDotsRes"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    .line 140
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v0

    .line 142
    .local v0, "color":I
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_1:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 144
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    if-eqz p4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 149
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIconFrame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMessageWithAnimation(IIIII)V
    .locals 2
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "topTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "statusIconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "bottomTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "statusDotsRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_2:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIcon_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIcon_2:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_1:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 171
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIcon_2:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 173
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->prepareIconAnimation()V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    .line 68
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    const v4, 0x7f0c00af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIconFrame:Landroid/view/View;

    .line 69
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIconFrame:Landroid/view/View;

    const v4, 0x7f0c00b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_1:Landroid/widget/ImageView;

    .line 70
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIconFrame:Landroid/view/View;

    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_2:Landroid/widget/ImageView;

    .line 71
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIconFrame:Landroid/view/View;

    const v4, 0x7f0c00b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topIcon_3:Landroid/widget/ImageView;

    .line 72
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    const v4, 0x7f0c00ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->topText:Landroid/widget/TextView;

    .line 74
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    const v4, 0x7f0c00b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIconFrame:Landroid/view/View;

    .line 75
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIconFrame:Landroid/view/View;

    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIcon_1:Landroid/widget/ImageView;

    .line 76
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIconFrame:Landroid/view/View;

    const v4, 0x7f0c00b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomIcon_2:Landroid/widget/ImageView;

    .line 77
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    const v4, 0x7f0c00b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->bottomText:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "display_status"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v1

    .line 81
    .local v1, "displayStatus":Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->setMessageForDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 83
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    const v3, 0x7f070171

    new-instance v4, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$1;-><init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "has_security_warning"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .local v2, "hasSecurityWarning":Z
    if-eqz v2, :cond_1

    .line 92
    const v3, 0x7f070173

    new-instance v4, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$2;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$2;-><init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 102
    :cond_1
    invoke-virtual {v1}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->hasAssociatedKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const v3, 0x7f070172

    new-instance v4, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$3;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$3;-><init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
