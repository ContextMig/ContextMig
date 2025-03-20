.class Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
.super Ljava/lang/Object;
.source "CachingDataViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkdk/android/simplydo/CachingDataViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewerTask"
.end annotation


# static fields
.field private static final CREATE_ITEM:I = 0x9

.field private static final CREATE_LIST:I = 0x8

.field private static final DELETE_INACTIVE:I = 0x7

.field private static final DELETE_ITEM:I = 0x6

.field private static final DELETE_LIST:I = 0x5

.field private static final FETCH_ITEMS:I = 0x1

.field private static final FETCH_LISTS:I = 0x0

.field private static final MOVE_ITEM:I = 0xb

.field private static final UPDATE_ACTIVENESS:I = 0x2

.field private static final UPDATE_ITEM_LABEL:I = 0x3

.field private static final UPDATE_LIST_LABEL:I = 0x4

.field private static final UPDATE_STARNESS:I = 0xa


# instance fields
.field private args:[Ljava/lang/Object;

.field private done:Z

.field private taskId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->done:Z

    return-void
.end method

.method synthetic constructor <init>(Lkdk/android/simplydo/CachingDataViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lkdk/android/simplydo/CachingDataViewer$1;

    .prologue
    .line 732
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)I
    .locals 1
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    .prologue
    .line 732
    iget v0, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->taskId:I

    return v0
.end method

.method static synthetic access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    .param p1, "x1"    # I

    .prologue
    .line 732
    iput p1, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->taskId:I

    return p1
.end method

.method static synthetic access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    .prologue
    .line 732
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 732
    iput-object p1, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->args:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)Z
    .locals 1
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    .prologue
    .line 732
    iget-boolean v0, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->done:Z

    return v0
.end method

.method static synthetic access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    .param p1, "x1"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->done:Z

    return p1
.end method
