.class Lcom/android/settings_ex/bootloader/a;
.super Ljava/lang/Object;
.source "BootloaderStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Sy:Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/bootloader/a;->Sy:Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bootloader/a;->Sy:Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;

    invoke-static {v0}, Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;->a(Lcom/android/settings_ex/bootloader/BootloaderStatusActivity;)V

    .line 55
    return-void
.end method