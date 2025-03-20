.class public final Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
.super Ljava/lang/Object;
.source "CustomTabConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/customtabs/CustomTabConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionButtonConfig"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final icon:Landroid/graphics/Bitmap;

.field public final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->description:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->icon:Landroid/graphics/Bitmap;

    .line 46
    iput-object p3, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;->pendingIntent:Landroid/app/PendingIntent;

    .line 47
    return-void
.end method
