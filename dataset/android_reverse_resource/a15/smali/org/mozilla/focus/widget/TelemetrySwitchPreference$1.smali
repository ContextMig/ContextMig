.class Lorg/mozilla/focus/widget/TelemetrySwitchPreference$1;
.super Ljava/lang/Object;
.source "TelemetrySwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/TelemetrySwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$1;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$1;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->setTelemetryEnabled(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method
