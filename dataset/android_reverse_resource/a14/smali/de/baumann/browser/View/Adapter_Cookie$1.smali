.class Lde/baumann/browser/View/Adapter_Cookie$1;
.super Ljava/lang/Object;
.source "Adapter_Cookie.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/Adapter_Cookie;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/Adapter_Cookie;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lde/baumann/browser/View/Adapter_Cookie;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    iput p2, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    new-instance p1, Lde/baumann/browser/Browser/Cookie;

    iget-object v0, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-static {v0}, Lde/baumann/browser/View/Adapter_Cookie;->access$100(Lde/baumann/browser/View/Adapter_Cookie;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lde/baumann/browser/Browser/Cookie;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-static {v0}, Lde/baumann/browser/View/Adapter_Cookie;->access$200(Lde/baumann/browser/View/Adapter_Cookie;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Browser/Cookie;->removeDomain(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-static {p1}, Lde/baumann/browser/View/Adapter_Cookie;->access$200(Lde/baumann/browser/View/Adapter_Cookie;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Cookie;->notifyDataSetChanged()V

    .line 58
    iget-object p1, p0, Lde/baumann/browser/View/Adapter_Cookie$1;->this$0:Lde/baumann/browser/View/Adapter_Cookie;

    invoke-static {p1}, Lde/baumann/browser/View/Adapter_Cookie;->access$100(Lde/baumann/browser/View/Adapter_Cookie;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e00f1

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    return-void
.end method
