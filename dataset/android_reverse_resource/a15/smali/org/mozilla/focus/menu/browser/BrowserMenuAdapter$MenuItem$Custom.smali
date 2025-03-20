.class public final Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;
.source "BrowserMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;

.field private final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;->pendingIntent:Landroid/app/PendingIntent;

    .line 37
    const v0, 0x7f0b0024

    iput v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;->viewType:I

    return-void
.end method


# virtual methods
.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;->viewType:I

    return v0
.end method
