.class Lcom/fsck/k9/activity/setup/Prefs$7;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/Prefs;->onChooseContactNameColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/Prefs;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$7;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 589
    invoke-static {p1}, Lcom/fsck/k9/K9;->setContactNameColor(I)V

    .line 590
    return-void
.end method
