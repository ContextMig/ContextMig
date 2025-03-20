.class Lkdk/android/simplydo/CachingDataViewer$1;
.super Ljava/lang/Object;
.source "CachingDataViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/CachingDataViewer;-><init>(Lkdk/android/simplydo/DataManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/CachingDataViewer;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/CachingDataViewer;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkdk/android/simplydo/CachingDataViewer$1;->this$0:Lkdk/android/simplydo/CachingDataViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer$1;->this$0:Lkdk/android/simplydo/CachingDataViewer;

    invoke-static {v0}, Lkdk/android/simplydo/CachingDataViewer;->access$000(Lkdk/android/simplydo/CachingDataViewer;)V

    .line 61
    return-void
.end method
