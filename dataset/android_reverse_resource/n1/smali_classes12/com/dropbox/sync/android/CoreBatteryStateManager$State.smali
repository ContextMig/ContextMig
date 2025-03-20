.class Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
.super Ljava/lang/Object;
.source "CoreBatteryStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBatteryStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field public final charging:Lcom/dropbox/sync/android/DbxChargingState;

.field public final level:Lcom/dropbox/sync/android/DbxBatteryLevel;

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBatteryStateManager;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreBatteryStateManager;Lcom/dropbox/sync/android/DbxChargingState;Lcom/dropbox/sync/android/DbxBatteryLevel;)V
    .locals 0
    .param p2, "charging"    # Lcom/dropbox/sync/android/DbxChargingState;
    .param p3, "level"    # Lcom/dropbox/sync/android/DbxBatteryLevel;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->this$0:Lcom/dropbox/sync/android/CoreBatteryStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    .line 28
    iput-object p3, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 29
    return-void
.end method
