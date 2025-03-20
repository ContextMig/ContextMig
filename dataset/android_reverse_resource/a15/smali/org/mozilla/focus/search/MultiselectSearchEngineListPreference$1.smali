.class Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference$1;
.super Ljava/lang/Object;
.source "MultiselectSearchEngineListPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->bindEngineCheckboxesToMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference$1;->this$0:Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference$1;->this$0:Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;

    invoke-virtual {v0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 70
    return-void
.end method
