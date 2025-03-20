.class Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;
.super Ljava/lang/Object;
.source "TelemetrySwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

.field final synthetic val$switchWidget:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/TelemetrySwitchPreference;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    iput-object p2, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;->val$switchWidget:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;->val$switchWidget:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
