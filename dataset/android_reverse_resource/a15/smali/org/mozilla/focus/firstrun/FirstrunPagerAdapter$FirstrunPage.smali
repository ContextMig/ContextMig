.class Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;
.super Ljava/lang/Object;
.source "FirstrunPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstrunPage"
.end annotation


# instance fields
.field public final imageResource:I

.field public final text:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "imageResource"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->title:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->text:Ljava/lang/String;

    .line 29
    iput p3, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->imageResource:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
