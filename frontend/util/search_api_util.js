export const searchJobs = query => (
    $.ajax({
        method: 'GET',
        url: '/api/search',
        data: { query }
    })
);