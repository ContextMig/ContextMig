.class public final Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;
.super Ljava/lang/Object;
.source "CustomTabConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/customtabs/CustomTabConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomTabMenuItem"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;->pendingIntent:Landroid/app/PendingIntent;

    .line 57
    return-void
.end method
