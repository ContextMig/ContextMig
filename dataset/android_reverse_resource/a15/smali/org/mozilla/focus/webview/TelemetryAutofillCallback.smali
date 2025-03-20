.class public final Lorg/mozilla/focus/webview/TelemetryAutofillCallback;
.super Landroid/view/autofill/AutofillManager$AutofillCallback;
.source "TelemetryAutofillCallback.kt"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    invoke-direct {v0}, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;-><init>()V

    sput-object v0, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$AutofillCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutofillEvent(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "event"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 32
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 33
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->autofillShownEvent()V

    .line 35
    :cond_0
    return-void
.end method

.method public final register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 21
    sget-object v1, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    check-cast v1, Landroid/view/autofill/AutofillManager$AutofillCallback;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    .line 22
    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 26
    sget-object v1, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    check-cast v1, Landroid/view/autofill/AutofillManager$AutofillCallback;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    .line 27
    return-void
.end method
