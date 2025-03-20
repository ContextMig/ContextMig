.class Landroid/support/v7/app/NotificationCompat$JellybeanExtender;
.super Landroid/support/v4/app/bc;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/bb;Landroid/support/v4/app/aw;)Landroid/app/Notification;
    .locals 1

    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->access$300(Landroid/support/v4/app/aw;Landroid/support/v4/app/bb;)V

    invoke-interface {p2}, Landroid/support/v4/app/aw;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/app/NotificationCompat;->access$400(Landroid/app/Notification;Landroid/support/v4/app/bb;)V

    return-object v0
.end method
