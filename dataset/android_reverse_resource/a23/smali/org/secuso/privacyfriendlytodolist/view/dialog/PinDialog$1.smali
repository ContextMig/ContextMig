.class Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 45
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_pin"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 47
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;->accepted()V

    .line 49
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->dismiss()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->access$108(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)I

    .line 54
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, ""

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setActivated(Z)V

    .line 58
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 59
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 60
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
