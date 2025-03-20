.class Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;
.super Ljava/lang/Object;
.source "TelemetrySwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 75
    iput-object p1, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v1, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    invoke-virtual {v1}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->USAGE_DATA:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v1, v2}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;->this$0:Lorg/mozilla/focus/widget/TelemetrySwitchPreference;

    invoke-virtual {v1}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 83
    return-void
.end method
