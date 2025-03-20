.class Lde/baumann/browser/Fragment/Fragment_settings_data$14;
.super Ljava/lang/Object;
.source "Fragment_settings_data.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Fragment/Fragment_settings_data;->dialogRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_settings_data;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$14;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iput-object p2, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$14;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$14;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
