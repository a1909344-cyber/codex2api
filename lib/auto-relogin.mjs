// 这是一个补丁文件，用于修复缺失模块导致的崩溃
export const autoRelogin = async () => {
    console.log("补丁：跳过自动重连逻辑...");
    return;
};

export default {
    autoRelogin
};
