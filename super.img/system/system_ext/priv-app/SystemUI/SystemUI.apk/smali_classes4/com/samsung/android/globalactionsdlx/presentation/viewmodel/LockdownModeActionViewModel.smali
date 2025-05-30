.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;
.super Ljava/lang/Object;
.source "LockdownModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;)V
    .registers 4
    .param p1, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;
    .param p2, "lockPatternUtilsWrapper"    # Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;
    .param p3, "globalActions"    # Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    .line 18
    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;

    .line 19
    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .registers 1

    .line 41
    return-void
.end method

.method public onPress()V
    .registers 7

    .line 33
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;

    const-string v1, "611"

    const-string v2, "6111"

    const-string v3, "Lock down"

    const-wide/16 v4, 0x4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/globalactionsdlx/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->lockDownDelayed(I)V

    .line 37
    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    .line 29
    return-void
.end method
