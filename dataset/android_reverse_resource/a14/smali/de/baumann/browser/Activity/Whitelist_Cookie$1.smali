.class Lde/baumann/browser/Activity/Whitelist_Cookie$1;
.super Ljava/lang/Object;
.source "Whitelist_Cookie.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/Whitelist_Cookie;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/Whitelist_Cookie;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    const v0, 0x7f090136

    invoke-virtual {p1, v0}, Lde/baumann/browser/Activity/Whitelist_Cookie;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 59
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    const v0, 0x7f0e00fb

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_1

    .line 62
    :cond_0
    invoke-static {p1}, Lde/baumann/browser/Unit/BrowserUnit;->isURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    const v0, 0x7f0e00fc

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_1

    .line 65
    :cond_1
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 67
    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->checkDomainCookie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    const v1, 0x7f0e00f2

    invoke-static {p1, v1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Lde/baumann/browser/Browser/Cookie;

    iget-object v2, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-direct {v1, v2}, Lde/baumann/browser/Browser/Cookie;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/Browser/Cookie;->addDomain(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-static {v1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->access$000(Lde/baumann/browser/Activity/Whitelist_Cookie;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    invoke-static {p1}, Lde/baumann/browser/Activity/Whitelist_Cookie;->access$100(Lde/baumann/browser/Activity/Whitelist_Cookie;)Lde/baumann/browser/View/Adapter_Cookie;

    move-result-object p1

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Cookie;->notifyDataSetChanged()V

    .line 74
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Cookie$1;->this$0:Lde/baumann/browser/Activity/Whitelist_Cookie;

    const v1, 0x7f0e00ea

    invoke-static {p1, v1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    .line 76
    :goto_0
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    :goto_1
    return-void
.end method
